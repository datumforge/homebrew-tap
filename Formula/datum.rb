# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datum < Formula
  desc "datum is the client CLI for interacting with Datum Server"
  homepage "https://github.com/datumforge/datum"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/datumforge/datum/releases/download/v0.5.1/datum_0.5.1_darwin_amd64.tar.gz"
      sha256 "7b15b92d140563d5b988b239c066b75c730a11e9c185cea7e44ee671274bdea2"

      def install
        bin.install "datum"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/datumforge/datum/releases/download/v0.5.1/datum_0.5.1_darwin_arm64.tar.gz"
      sha256 "3f7251a209cdaeeb1d384b4cc89cac55360c0404f58bcf93d2ee0d34d5f5df43"

      def install
        bin.install "datum"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/datumforge/datum/releases/download/v0.5.1/datum_0.5.1_linux_amd64.tar.gz"
      sha256 "f684c9a30ad0136fc0d35d6b0d41d3d428e2eef575785399fa780bc0bf307e77"

      def install
        bin.install "datum"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/datumforge/datum/releases/download/v0.5.1/datum_0.5.1_linux_arm64.tar.gz"
      sha256 "4ad8ca53ce26bb6e2367cef3a678e267bf5ef08bc23034076799590c1345a660"

      def install
        bin.install "datum"
      end
    end
  end

  test do
    system "#{bin}/datum --help"
  end
end
